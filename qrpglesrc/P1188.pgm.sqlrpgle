**free

ctl-opt dftactgrp(*no);

dcl-pi P1188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P581.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds theTable extname('T303') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T303 LIMIT 1;

theCharVar = 'Hello from P1188';
dsply theCharVar;
P581();
P752();
P12();
return;