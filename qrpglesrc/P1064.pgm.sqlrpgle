**free

ctl-opt dftactgrp(*no);

dcl-pi P1064;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds theTable extname('T377') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T377 LIMIT 1;

theCharVar = 'Hello from P1064';
dsply theCharVar;
callp localProc();
P545();
P262();
P541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1064 in the procedure';
end-proc;