**free

ctl-opt dftactgrp(*no);

dcl-pi P606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P264.rpgleinc'

dcl-ds T779 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T779 FROM T779 LIMIT 1;

theCharVar = 'Hello from P606';
dsply theCharVar;
callp localProc();
P11();
P258();
P264();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P606 in the procedure';
end-proc;