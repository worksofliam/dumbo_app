**free

ctl-opt dftactgrp(*no);

dcl-pi P1043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P827.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds T971 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T971 FROM T971 LIMIT 1;

theCharVar = 'Hello from P1043';
dsply theCharVar;
callp localProc();
P827();
P612();
P245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1043 in the procedure';
end-proc;