**free

ctl-opt dftactgrp(*no);

dcl-pi P5152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3844.rpgleinc'
/copy 'qrpgleref/P1870.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'

dcl-ds theTable extname('T1143') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1143 LIMIT 1;

theCharVar = 'Hello from P5152';
dsply theCharVar;
P3844();
P1870();
P705();
return;