**free

ctl-opt dftactgrp(*no);

dcl-pi P619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds T173 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T173 FROM T173 LIMIT 1;

theCharVar = 'Hello from P619';
dsply theCharVar;
callp localProc();
P587();
P416();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P619 in the procedure';
end-proc;