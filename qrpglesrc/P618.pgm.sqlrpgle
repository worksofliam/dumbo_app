**free

ctl-opt dftactgrp(*no);

dcl-pi P618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P618';
dsply theCharVar;
callp localProc();
P616();
P46();
P261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P618 in the procedure';
end-proc;