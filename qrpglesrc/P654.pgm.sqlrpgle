**free

ctl-opt dftactgrp(*no);

dcl-pi P654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'

dcl-ds theTable extname('T1082') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1082 LIMIT 1;

theCharVar = 'Hello from P654';
dsply theCharVar;
callp localProc();
P47();
P369();
P278();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P654 in the procedure';
end-proc;