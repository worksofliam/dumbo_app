**free

ctl-opt dftactgrp(*no);

dcl-pi P761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P427.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T102') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T102 LIMIT 1;

theCharVar = 'Hello from P761';
dsply theCharVar;
P427();
P18();
P434();
return;