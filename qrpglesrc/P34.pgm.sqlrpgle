**free

ctl-opt dftactgrp(*no);

dcl-pi P34;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds T142 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T142 FROM T142 LIMIT 1;

theCharVar = 'Hello from P34';
dsply theCharVar;
P11();
P21();
P22();
return;