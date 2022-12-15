**free

ctl-opt dftactgrp(*no);

dcl-pi P4210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3743.rpgleinc'
/copy 'qrpgleref/P2372.rpgleinc'
/copy 'qrpgleref/P3393.rpgleinc'

dcl-ds theTable extname('T824') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T824 LIMIT 1;

theCharVar = 'Hello from P4210';
dsply theCharVar;
P3743();
P2372();
P3393();
return;