**free

ctl-opt dftactgrp(*no);

dcl-pi P5258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2866.rpgleinc'
/copy 'qrpgleref/P4157.rpgleinc'
/copy 'qrpgleref/P3853.rpgleinc'

dcl-ds T1453 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1453 FROM T1453 LIMIT 1;

theCharVar = 'Hello from P5258';
dsply theCharVar;
P2866();
P4157();
P3853();
return;