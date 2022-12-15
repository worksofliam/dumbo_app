**free

ctl-opt dftactgrp(*no);

dcl-pi P5316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5070.rpgleinc'
/copy 'qrpgleref/P3489.rpgleinc'
/copy 'qrpgleref/P3798.rpgleinc'

dcl-ds T296 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T296 FROM T296 LIMIT 1;

theCharVar = 'Hello from P5316';
dsply theCharVar;
callp localProc();
P5070();
P3489();
P3798();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5316 in the procedure';
end-proc;