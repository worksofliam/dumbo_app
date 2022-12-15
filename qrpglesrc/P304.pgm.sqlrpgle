**free

ctl-opt dftactgrp(*no);

dcl-pi P304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T796 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T796 FROM T796 LIMIT 1;

theCharVar = 'Hello from P304';
dsply theCharVar;
callp localProc();
P162();
P156();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P304 in the procedure';
end-proc;