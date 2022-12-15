**free

ctl-opt dftactgrp(*no);

dcl-pi P40;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds T708 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T708 FROM T708 LIMIT 1;

theCharVar = 'Hello from P40';
dsply theCharVar;
callp localProc();
P39();
P20();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P40 in the procedure';
end-proc;