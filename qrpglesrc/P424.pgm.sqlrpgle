**free

ctl-opt dftactgrp(*no);

dcl-pi P424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P103.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'

dcl-ds T233 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T233 FROM T233 LIMIT 1;

theCharVar = 'Hello from P424';
dsply theCharVar;
callp localProc();
P103();
P320();
P198();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P424 in the procedure';
end-proc;