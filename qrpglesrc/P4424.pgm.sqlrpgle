**free

ctl-opt dftactgrp(*no);

dcl-pi P4424;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3208.rpgleinc'
/copy 'qrpgleref/P4210.rpgleinc'
/copy 'qrpgleref/P3711.rpgleinc'

dcl-ds T178 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T178 FROM T178 LIMIT 1;

theCharVar = 'Hello from P4424';
dsply theCharVar;
callp localProc();
P3208();
P4210();
P3711();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4424 in the procedure';
end-proc;