**free

ctl-opt dftactgrp(*no);

dcl-pi P3452;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2539.rpgleinc'
/copy 'qrpgleref/P1318.rpgleinc'
/copy 'qrpgleref/P2503.rpgleinc'

dcl-ds T176 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T176 FROM T176 LIMIT 1;

theCharVar = 'Hello from P3452';
dsply theCharVar;
callp localProc();
P2539();
P1318();
P2503();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3452 in the procedure';
end-proc;