**free

ctl-opt dftactgrp(*no);

dcl-pi P1558;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1022.rpgleinc'
/copy 'qrpgleref/P742.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'

dcl-ds theTable extname('T1333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1333 LIMIT 1;

theCharVar = 'Hello from P1558';
dsply theCharVar;
P1022();
P742();
P46();
return;