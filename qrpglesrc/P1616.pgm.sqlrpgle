**free

ctl-opt dftactgrp(*no);

dcl-pi P1616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P1030.rpgleinc'

dcl-ds T699 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T699 FROM T699 LIMIT 1;

theCharVar = 'Hello from P1616';
dsply theCharVar;
callp localProc();
P537();
P796();
P1030();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1616 in the procedure';
end-proc;