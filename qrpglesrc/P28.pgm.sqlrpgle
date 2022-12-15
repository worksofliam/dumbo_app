**free

ctl-opt dftactgrp(*no);

dcl-pi P28;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T326 FROM T326 LIMIT 1;

theCharVar = 'Hello from P28';
dsply theCharVar;
callp localProc();
P22();
P3();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P28 in the procedure';
end-proc;