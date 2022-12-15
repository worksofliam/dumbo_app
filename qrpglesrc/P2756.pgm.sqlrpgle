**free

ctl-opt dftactgrp(*no);

dcl-pi P2756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2701.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'

dcl-ds theTable extname('T718') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T718 LIMIT 1;

theCharVar = 'Hello from P2756';
dsply theCharVar;
P2701();
P642();
P1168();
return;