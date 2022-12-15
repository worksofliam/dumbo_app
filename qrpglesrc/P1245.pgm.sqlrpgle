**free

ctl-opt dftactgrp(*no);

dcl-pi P1245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds theTable extname('T367') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T367 LIMIT 1;

theCharVar = 'Hello from P1245';
dsply theCharVar;
P24();
P658();
P293();
return;