**free

ctl-opt dftactgrp(*no);

dcl-pi P4580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1022.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P3671.rpgleinc'

dcl-ds theTable extname('T1330') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1330 LIMIT 1;

theCharVar = 'Hello from P4580';
dsply theCharVar;
P1022();
P639();
P3671();
return;