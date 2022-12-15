**free

ctl-opt dftactgrp(*no);

dcl-pi P866;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P415.rpgleinc'

dcl-ds T1105 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1105 FROM T1105 LIMIT 1;

theCharVar = 'Hello from P866';
dsply theCharVar;
callp localProc();
P87();
P218();
P415();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P866 in the procedure';
end-proc;