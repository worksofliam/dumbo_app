**free

ctl-opt dftactgrp(*no);

dcl-pi P539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P336.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds T1825 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1825 FROM T1825 LIMIT 1;

theCharVar = 'Hello from P539';
dsply theCharVar;
P336();
P380();
P278();
return;