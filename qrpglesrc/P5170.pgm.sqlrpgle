**free

ctl-opt dftactgrp(*no);

dcl-pi P5170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2644.rpgleinc'
/copy 'qrpgleref/P2904.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'

dcl-ds T441 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T441 FROM T441 LIMIT 1;

theCharVar = 'Hello from P5170';
dsply theCharVar;
P2644();
P2904();
P777();
return;