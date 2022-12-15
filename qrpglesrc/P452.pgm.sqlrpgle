**free

ctl-opt dftactgrp(*no);

dcl-pi P452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P138.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds T140 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T140 FROM T140 LIMIT 1;

theCharVar = 'Hello from P452';
dsply theCharVar;
callp localProc();
P138();
P110();
P410();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P452 in the procedure';
end-proc;