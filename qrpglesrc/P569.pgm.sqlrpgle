**free

ctl-opt dftactgrp(*no);

dcl-pi P569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T338 LIMIT 1;

theCharVar = 'Hello from P569';
dsply theCharVar;
callp localProc();
P258();
P218();
P313();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P569 in the procedure';
end-proc;