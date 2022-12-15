**free

ctl-opt dftactgrp(*no);

dcl-pi P706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'

dcl-ds theTable extname('T127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T127 LIMIT 1;

theCharVar = 'Hello from P706';
dsply theCharVar;
P261();
P16();
P258();
return;