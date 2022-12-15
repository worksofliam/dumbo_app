**free

ctl-opt dftactgrp(*no);

dcl-pi P3449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3068.rpgleinc'
/copy 'qrpgleref/P2949.rpgleinc'
/copy 'qrpgleref/P3207.rpgleinc'

dcl-ds theTable extname('T292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T292 LIMIT 1;

theCharVar = 'Hello from P3449';
dsply theCharVar;
P3068();
P2949();
P3207();
return;