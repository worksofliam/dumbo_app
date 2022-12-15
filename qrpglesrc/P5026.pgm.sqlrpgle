**free

ctl-opt dftactgrp(*no);

dcl-pi P5026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4106.rpgleinc'
/copy 'qrpgleref/P1395.rpgleinc'
/copy 'qrpgleref/P3894.rpgleinc'

dcl-ds T618 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T618 FROM T618 LIMIT 1;

theCharVar = 'Hello from P5026';
dsply theCharVar;
callp localProc();
P4106();
P1395();
P3894();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5026 in the procedure';
end-proc;