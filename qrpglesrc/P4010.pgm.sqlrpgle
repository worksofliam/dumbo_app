**free

ctl-opt dftactgrp(*no);

dcl-pi P4010;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3210.rpgleinc'
/copy 'qrpgleref/P3202.rpgleinc'
/copy 'qrpgleref/P2224.rpgleinc'

dcl-ds T1664 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1664 FROM T1664 LIMIT 1;

theCharVar = 'Hello from P4010';
dsply theCharVar;
callp localProc();
P3210();
P3202();
P2224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4010 in the procedure';
end-proc;