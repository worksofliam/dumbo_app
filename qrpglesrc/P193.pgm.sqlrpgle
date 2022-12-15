**free

ctl-opt dftactgrp(*no);

dcl-pi P193;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds T167 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T167 FROM T167 LIMIT 1;

theCharVar = 'Hello from P193';
dsply theCharVar;
callp localProc();
P176();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P193 in the procedure';
end-proc;