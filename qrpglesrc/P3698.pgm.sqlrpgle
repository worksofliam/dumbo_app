**free

ctl-opt dftactgrp(*no);

dcl-pi P3698;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P940.rpgleinc'
/copy 'qrpgleref/P2226.rpgleinc'
/copy 'qrpgleref/P1624.rpgleinc'

dcl-ds theTable extname('T874') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T874 LIMIT 1;

theCharVar = 'Hello from P3698';
dsply theCharVar;
P940();
P2226();
P1624();
return;