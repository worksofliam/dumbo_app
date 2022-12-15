**free

ctl-opt dftactgrp(*no);

dcl-pi P2344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P1098.rpgleinc'
/copy 'qrpgleref/P1909.rpgleinc'

dcl-ds theTable extname('T805') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T805 LIMIT 1;

theCharVar = 'Hello from P2344';
dsply theCharVar;
P770();
P1098();
P1909();
return;