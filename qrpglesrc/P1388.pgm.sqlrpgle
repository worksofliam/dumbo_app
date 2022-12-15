**free

ctl-opt dftactgrp(*no);

dcl-pi P1388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds T1129 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1129 FROM T1129 LIMIT 1;

theCharVar = 'Hello from P1388';
dsply theCharVar;
callp localProc();
P115();
P1286();
P399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1388 in the procedure';
end-proc;