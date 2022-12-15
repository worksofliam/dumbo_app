**free

ctl-opt dftactgrp(*no);

dcl-pi P532;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds T65 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T65 FROM T65 LIMIT 1;

theCharVar = 'Hello from P532';
dsply theCharVar;
callp localProc();
P224();
P328();
P216();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P532 in the procedure';
end-proc;