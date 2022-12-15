**free

ctl-opt dftactgrp(*no);

dcl-pi P1572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P757.rpgleinc'

dcl-ds T723 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T723 FROM T723 LIMIT 1;

theCharVar = 'Hello from P1572';
dsply theCharVar;
P494();
P367();
P757();
return;