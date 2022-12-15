**free

ctl-opt dftactgrp(*no);

dcl-pi P727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P581.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T121') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T121 LIMIT 1;

theCharVar = 'Hello from P727';
dsply theCharVar;
callp localProc();
P270();
P581();
P236();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P727 in the procedure';
end-proc;