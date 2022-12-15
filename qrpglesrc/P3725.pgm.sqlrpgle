**free

ctl-opt dftactgrp(*no);

dcl-pi P3725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1604.rpgleinc'
/copy 'qrpgleref/P2602.rpgleinc'
/copy 'qrpgleref/P1207.rpgleinc'

dcl-ds T1725 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1725 FROM T1725 LIMIT 1;

theCharVar = 'Hello from P3725';
dsply theCharVar;
callp localProc();
P1604();
P2602();
P1207();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3725 in the procedure';
end-proc;