**free

ctl-opt dftactgrp(*no);

dcl-pi P126;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'

dcl-ds T1575 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1575 FROM T1575 LIMIT 1;

theCharVar = 'Hello from P126';
dsply theCharVar;
P101();
P65();
P27();
return;