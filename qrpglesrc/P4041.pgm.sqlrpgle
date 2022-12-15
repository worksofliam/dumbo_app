**free

ctl-opt dftactgrp(*no);

dcl-pi P4041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P876.rpgleinc'
/copy 'qrpgleref/P1320.rpgleinc'
/copy 'qrpgleref/P894.rpgleinc'

dcl-ds T257 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T257 FROM T257 LIMIT 1;

theCharVar = 'Hello from P4041';
dsply theCharVar;
callp localProc();
P876();
P1320();
P894();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4041 in the procedure';
end-proc;