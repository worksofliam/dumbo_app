**free

ctl-opt dftactgrp(*no);

dcl-pi P91;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T443 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T443 FROM T443 LIMIT 1;

theCharVar = 'Hello from P91';
dsply theCharVar;
callp localProc();
P0();
P55();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P91 in the procedure';
end-proc;