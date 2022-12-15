**free

ctl-opt dftactgrp(*no);

dcl-pi P5335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P1980.rpgleinc'
/copy 'qrpgleref/P2255.rpgleinc'

dcl-ds T1015 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1015 FROM T1015 LIMIT 1;

theCharVar = 'Hello from P5335';
dsply theCharVar;
callp localProc();
P455();
P1980();
P2255();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5335 in the procedure';
end-proc;