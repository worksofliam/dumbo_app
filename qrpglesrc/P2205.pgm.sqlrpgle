**free

ctl-opt dftactgrp(*no);

dcl-pi P2205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2069.rpgleinc'
/copy 'qrpgleref/P1900.rpgleinc'
/copy 'qrpgleref/P1850.rpgleinc'

dcl-ds theTable extname('T450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T450 LIMIT 1;

theCharVar = 'Hello from P2205';
dsply theCharVar;
P2069();
P1900();
P1850();
return;