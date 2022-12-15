**free

ctl-opt dftactgrp(*no);

dcl-pi P3109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P1547.rpgleinc'

dcl-ds theTable extname('T1816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1816 LIMIT 1;

theCharVar = 'Hello from P3109';
dsply theCharVar;
P329();
P22();
P1547();
return;