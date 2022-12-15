**free

ctl-opt dftactgrp(*no);

dcl-pi P763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P698.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds theTable extname('T1507') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1507 LIMIT 1;

theCharVar = 'Hello from P763';
dsply theCharVar;
callp localProc();
P698();
P621();
P47();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P763 in the procedure';
end-proc;