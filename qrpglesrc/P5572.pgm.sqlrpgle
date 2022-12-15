**free

ctl-opt dftactgrp(*no);

dcl-pi P5572;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3479.rpgleinc'
/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P4625.rpgleinc'

dcl-ds T421 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T421 FROM T421 LIMIT 1;

theCharVar = 'Hello from P5572';
dsply theCharVar;
P3479();
P310();
P4625();
return;