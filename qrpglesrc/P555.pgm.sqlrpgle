**free

ctl-opt dftactgrp(*no);

dcl-pi P555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P295.rpgleinc'
/copy 'qrpgleref/P523.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds T581 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T581 FROM T581 LIMIT 1;

theCharVar = 'Hello from P555';
dsply theCharVar;
callp localProc();
P295();
P523();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P555 in the procedure';
end-proc;