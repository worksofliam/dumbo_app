**free

ctl-opt dftactgrp(*no);

dcl-pi P2008;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'

dcl-ds theTable extname('T646') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T646 LIMIT 1;

theCharVar = 'Hello from P2008';
dsply theCharVar;
P1077();
P1043();
P591();
return;