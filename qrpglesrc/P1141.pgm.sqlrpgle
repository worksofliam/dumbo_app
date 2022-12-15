**free

ctl-opt dftactgrp(*no);

dcl-pi P1141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds T265 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T265 FROM T265 LIMIT 1;

theCharVar = 'Hello from P1141';
dsply theCharVar;
callp localProc();
P276();
P606();
P668();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1141 in the procedure';
end-proc;