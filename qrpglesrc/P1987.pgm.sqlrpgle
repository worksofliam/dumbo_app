**free

ctl-opt dftactgrp(*no);

dcl-pi P1987;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1541.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P1872.rpgleinc'

dcl-ds theTable extname('T797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T797 LIMIT 1;

theCharVar = 'Hello from P1987';
dsply theCharVar;
P1541();
P541();
P1872();
return;