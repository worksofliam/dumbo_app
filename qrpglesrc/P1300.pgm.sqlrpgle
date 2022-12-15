**free

ctl-opt dftactgrp(*no);

dcl-pi P1300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1237.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds theTable extname('T177') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T177 LIMIT 1;

theCharVar = 'Hello from P1300';
dsply theCharVar;
P1237();
P13();
P271();
return;