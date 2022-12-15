**free

ctl-opt dftactgrp(*no);

dcl-pi P1704;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1566.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P676.rpgleinc'

dcl-ds T772 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T772 FROM T772 LIMIT 1;

theCharVar = 'Hello from P1704';
dsply theCharVar;
callp localProc();
P1566();
P239();
P676();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1704 in the procedure';
end-proc;