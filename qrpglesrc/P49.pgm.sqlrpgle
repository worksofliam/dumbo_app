**free

ctl-opt dftactgrp(*no);

dcl-pi P49;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'

dcl-ds T326 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T326 FROM T326 LIMIT 1;

theCharVar = 'Hello from P49';
dsply theCharVar;
callp localProc();
P20();
P12();
P21();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P49 in the procedure';
end-proc;