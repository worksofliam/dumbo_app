**free

ctl-opt dftactgrp(*no);

dcl-pi P1182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1054.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'

dcl-ds T155 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T155 FROM T155 LIMIT 1;

theCharVar = 'Hello from P1182';
dsply theCharVar;
callp localProc();
P1054();
P867();
P155();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1182 in the procedure';
end-proc;