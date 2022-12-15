**free

ctl-opt dftactgrp(*no);

dcl-pi P505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P203.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'

dcl-ds T1129 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1129 FROM T1129 LIMIT 1;

theCharVar = 'Hello from P505';
dsply theCharVar;
callp localProc();
P203();
P25();
P223();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P505 in the procedure';
end-proc;