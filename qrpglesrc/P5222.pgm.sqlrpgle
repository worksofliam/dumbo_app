**free

ctl-opt dftactgrp(*no);

dcl-pi P5222;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4371.rpgleinc'
/copy 'qrpgleref/P1141.rpgleinc'
/copy 'qrpgleref/P4338.rpgleinc'

dcl-ds T1502 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1502 FROM T1502 LIMIT 1;

theCharVar = 'Hello from P5222';
dsply theCharVar;
P4371();
P1141();
P4338();
return;