**free

ctl-opt dftactgrp(*no);

dcl-pi P1833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P273.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds T329 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T329 FROM T329 LIMIT 1;

theCharVar = 'Hello from P1833';
dsply theCharVar;
callp localProc();
P111();
P273();
P35();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1833 in the procedure';
end-proc;