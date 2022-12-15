**free

ctl-opt dftactgrp(*no);

dcl-pi P1851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'

dcl-ds T1097 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1097 FROM T1097 LIMIT 1;

theCharVar = 'Hello from P1851';
dsply theCharVar;
callp localProc();
P652();
P119();
P466();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1851 in the procedure';
end-proc;